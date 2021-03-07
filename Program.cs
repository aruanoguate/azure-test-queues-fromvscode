﻿using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Queue; 
using System;
using System.Threading.Tasks;

namespace QueueApp
{
    class Program
    {
        private const string ConnectionString = "DefaultEndpointsProtocol=https;EndpointSuffix=core.windows.net;AccountName=mystoragemar72021;AccountKey=FTLX2IK7oaophgq83voHtzMQaJsSeAVB+ThczBImz3OIwT7zbG/+utrisccfbpmSpAZzf6Zch/zcqtB6+iwxbA==";
        
        static async Task Main(string[] args)
        {
            if (args.Length > 0)
            {
                string value = String.Join(" ", args);
                await SendArticleAsync(value);
                Console.WriteLine($"Sent: {value}");
            }
        }

        static async Task SendArticleAsync(string newsMessage)
        {
            CloudStorageAccount storageAccount = CloudStorageAccount.Parse(ConnectionString);

            CloudQueueClient queueClient = storageAccount.CreateCloudQueueClient();

            CloudQueue queue = queueClient.GetQueueReference("newsqueue");
            bool createdQueue = await queue.CreateIfNotExistsAsync();
            if (createdQueue)
            {
                Console.WriteLine("The queue of news articles was created.");
            }

            CloudQueueMessage articleMessage = new CloudQueueMessage(newsMessage);
            await queue.AddMessageAsync(articleMessage);
        }
    }
}
